import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;

@WebServlet(urlPatterns={"/projeto"})
public class App extends HttpServlet
{
	@Override
	public void doGet (HttpServletRequest req, HttpServletResponse res)
	{
		try
		{
			PrintWriter pw = res.getWriter();
			pw.write("Build com Gradle funcionando!!");
			pw.close();
		}
		catch(Exception e)
		{
			System.out.println("Erro em IO ou Servlet");
		}
	}
}