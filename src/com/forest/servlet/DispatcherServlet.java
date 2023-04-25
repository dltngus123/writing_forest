package com.forest.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.controller.HandlerMapper;


public class DispatcherServlet extends HttpServlet {
	
	private HandlerMapper handlerMapper;

	@Override
	public void init(ServletConfig config) throws ServletException {
		String initUrl = config.getInitParameter("initUrl");
		initUrl=initUrl.replace(".properties", "");
		try {
			handlerMapper = new HandlerMapper(initUrl);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}
	
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		// 사용자 URI 검출
		String command = request.getRequestURI(); //contextPath 포함
		if(command.indexOf(request.getContextPath())==0) {
			command = command.substring(request.getContextPath().length());
		}
		
		Action action = null;
		String view = null;
		
		if(handlerMapper != null) {
			action = handlerMapper.getAction(command);
			if(action != null) {
				try {
					view = action.execute(request, response);
					if(view == null) {
						return;
					}
					
					if(view.contains("redirect:")) {
						view=request.getContextPath()+view.replace("redirect:", "");
						response.sendRedirect(view);
					}else {
						request.getRequestDispatcher(view).forward(request, response);
					}
					
				}catch(Exception e){
					e.printStackTrace();
					response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
					System.out.println("임플문제임");
				}
			}else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
				System.out.println("jsp를 못찾는거임");
			}
		}else {
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			System.out.println("핸들러매퍼에서 걸림");
		}
	}
}
