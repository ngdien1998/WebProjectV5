package quanlynhahang.controllers;

import quanlynhahang.models.businessmodels.NguoiDungService;
import quanlynhahang.models.datamodels.NguoiDung;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SuaNguoiDungServlet", urlPatterns = { "/admin/sua-nguoi-dung"} )
public class SuaNguoiDungServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            if (email == null) {
                response.setStatus(400);
                return;
            }
            NguoiDungService service = new NguoiDungService();
            NguoiDung nguoiDung = service.get(email);
            if (nguoiDung == null) {
                response.setStatus(404);
                return;
            }
            request.setAttribute("nguoiDung", nguoiDung);

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin-sua-nguoi-dung.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String choPhep = request.getParameter("chkAllow");
        } catch (Exception e) {

        }
    }
}
