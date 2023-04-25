package com.forest.action.writer.write;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.dto.ReplyVO;
import com.forest.service.ReplyService;

public class WriteReplyAction implements Action {

    private ReplyService replyService;

    public void setReplyService(ReplyService replyService) {
        this.replyService = replyService;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        int writing_num = Integer.parseInt(request.getParameter("writing_num"));
        ObjectMapper mapper = new ObjectMapper();
        SearchCriteria cri = new SearchCriteria();
        cri.setPage(1);
        cri.setPerPageNum(100);
        Map<String, Object> dataMap = replyService.getReplyWritingList(writing_num, cri);

        List<ReplyVO> replyList = (List<ReplyVO>) dataMap.get("replyList");
        String json = mapper.writeValueAsString(replyList);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
        out.close();

        return null;
    }
}