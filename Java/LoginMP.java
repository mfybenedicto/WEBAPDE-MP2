

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserServices;

/**
 * Servlet implementation class LoginMP
 */
@WebServlet("/LoginMP")
public class LoginMP extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String REMEMBER_ME = "1";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginMP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("hello");
		request.getRequestDispatcher("/LoginPage.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Get the user and pass and remember me
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rememberMe = request.getParameter("rememberMe");
		boolean isRememberMe = false;
		if (REMEMBER_ME.equals(rememberMe)) {
			isRememberMe = true;
		}
		//System.out.println("dummyLogin");
		//check user services for login authentication
		User user = UserServices.dummyLogin(username, password, isRememberMe);
		
		if (user != null) {
			// save person to session
			// you can also do getSession().setAttribute instead of getting
			// HttpSession object first before setting attribute
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("username", user.getUsername());
			//username = user.getUsername();
			
			// redirect to secured page
			response.sendRedirect("/WEBAPDE-MP2/HomeServlet");
			System.out.println("login dopost");
		} else {
			response.sendRedirect("/WEBAPDE-MP2/LoginMP");
			System.out.println("login dopost");
		}
	}

}
