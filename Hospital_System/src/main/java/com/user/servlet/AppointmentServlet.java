package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        try {
            String userIdStr = req.getParameter("userid");
            if (userIdStr == null || userIdStr.trim().isEmpty()) {
                session.setAttribute("errorMsg", "You must be logged in to make an appointment.");
                resp.sendRedirect("user_appointment.jsp");
                return;
            }
            int userId = Integer.parseInt(userIdStr);

            String fullname = req.getParameter("fullname"); // note corrected name
            String gender = req.getParameter("gender");
            String ageStr = req.getParameter("age");
            String appoint_date = req.getParameter("appoint_date");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String diseases = req.getParameter("diseases");
            String doctStr = req.getParameter("doct");
            String address = req.getParameter("address");

            if (fullname == null || fullname.trim().isEmpty() ||
                gender == null || ageStr == null || ageStr.trim().isEmpty() ||
                appoint_date == null || address == null || address.trim().isEmpty() ||
                doctStr == null || doctStr.trim().isEmpty()) {

                session.setAttribute("errorMsg", "Please fill all required fields.");
                resp.sendRedirect("user_appointment.jsp");
                return;
            }

            int age = Integer.parseInt(ageStr);
            int doctor_id = Integer.parseInt(doctStr);

            Appointment ap = new Appointment(userId, fullname, gender, String.valueOf(age),
                    appoint_date, email, phno, diseases, doctor_id, address, "pending");

            AppointmentDao dao = new AppointmentDao(DBConnect.getConn());

            if (dao.addAppointment(ap)) {
                session.setAttribute("succMsg", "Appointment Created Successfully!");
            } else {
                session.setAttribute("errorMsg", "Something went wrong on server!");
            }

            resp.sendRedirect("user_appointment.jsp");

        } catch (NumberFormatException nfe) {
            nfe.printStackTrace();
            session.setAttribute("errorMsg", "Invalid numeric value provided.");
            resp.sendRedirect("user_appointment.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // include the exception message to help debugging (you can remove in production)
            session.setAttribute("errorMsg", "Server error: " + e.getMessage());
            resp.sendRedirect("user_appointment.jsp");
        }
    }

}
