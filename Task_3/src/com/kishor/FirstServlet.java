package com.kishor;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FirstServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String n=request.getParameter("username");
		String p=request.getParameter("userpass");
		
		if(LoginDao.validate(n, p))
		{
			RequestDispatcher dp=request.getRequestDispatcher("nav.jsp");
			dp.forward(request, response);
		}
		else
		{
			out.println("<html>"+
			
					"<body>"+						
					"<script>"+		
					"alert(\"User name and Password Invalid\");"+					
					"</script>"+	
					"</body>"+
					"</html>");						
			RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");
			rd.include(request,response);
		}
		
		out.close();
	}

}
