package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dto.MainDto;
import Dto.UserDto;
import Service.MainServiceImpl;

@WebServlet("/Main/*")
public class MainServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		HttpSession session = request.getSession();
		UserDto userDto = (UserDto) session.getAttribute("userDto");
		
		String contextPath = request.getContextPath();
		String path = request.getRequestURI().substring(contextPath.length());
		System.out.println(path);
		
		if(path=="/Main/list") {
			list(request,response);
		}
		if(path=="/Main/boardmain") {
			boardmain(request,response);
		}
	}
	private void boardmain(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/board.jsp");
		dispatcher.forward(request, response);
	}
	protected void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strLimit = request.getParameter("limit");
		String strOffset = request.getParameter("offset");
		String searchWord = request.getParameter("searchWord");

		int limit = Integer.parseInt(strLimit);
		int offset = Integer.parseInt(strOffset);
		List<MainDto> list;
		
//		try {
//			
//			
//			list = service.list();
//			// 5. 모델 결과받아서 응답위한 설정
//			request.setAttribute("list", list);
//			request.getRequestDispatcher("/product/list.jsp").forward(request, response);
//			// 6. 응답이동
//
//		} catch (SQLException e) {
//			response.sendRedirect(root + "/error/error.jsp");		
//		}
	}

}
