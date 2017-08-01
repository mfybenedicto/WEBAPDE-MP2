

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

/**
 * Servlet implementation class ViewPhoto
 */
@WebServlet("/ViewPhoto")
public class ViewPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewPhoto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/PhotoViewer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Get the parameter shit here request.blahblah
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String uploader = request.getParameter("uploader");
		String tags = request.getParameter("tags");
		
		//get the image
		String thumbURL = request.getParameter("thumbURL");
		
		
		//give image to jsp
		
		request.getRequestDispatcher("/PhotoViewer.jsp").forward(request, response);
		
	}

}
