

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserServices;
/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/RegisterPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Gawa user ng account
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//Save sa static variable
		UserServices.tempUsername = username;
		UserServices.tempPassword = password;
		
		
		User user = UserServices.dummyLogin(username, password, false);
		
		//Save mo sa current session
		request.getSession().setAttribute("user", user);

		//Punta mo sila sa home
		response.sendRedirect("/WEBAPDE-MP2/HomeServlet");
		System.out.println("login dopost");
	}

}
