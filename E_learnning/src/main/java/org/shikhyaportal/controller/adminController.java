package org.shikhyaportal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.shikhyaportal.methods.methods;

public class adminController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        methods methodInstance = new methods(); // Correct instantiation of methods

        if (action.equalsIgnoreCase("showallstudent")) {
            Connection con = methodInstance.connectDB(); // Corrected connection method
            ResultSet stu = null;
            List<String> studentdata = new ArrayList<>();

            try (Statement stmt = con.createStatement()) {
                String mySQL = "SELECT * FROM student";
                stu = stmt.executeQuery(mySQL);
                while (stu.next()) {
                    studentdata.add(stu.getString("STU_ID"));
                    studentdata.add(stu.getString("STU_FIRST_NAME"));
                    studentdata.add(stu.getString("STU_LAST_NAME"));
                    studentdata.add(stu.getString("STU_DOB"));
                    studentdata.add(stu.getString("STU_SEX"));
                    studentdata.add(stu.getString("STU_ADDRESS"));
                    studentdata.add(stu.getString("EMAIL"));
                    studentdata.add(stu.getString("STU_PHONE"));
                    studentdata.add(stu.getString("INS_ID"));
                    studentdata.add(stu.getString("DEP_id"));
                }
            } catch (SQLException e) {
                try (PrintWriter out = response.getWriter()) {
                    out.println("Error retrieving student data: " + e.getMessage());
                }
            } finally {
                try { if (stu != null) stu.close(); } catch (SQLException e) { /* Handle Exception */ }
                try { if (con != null) con.close(); } catch (SQLException e) { /* Handle Exception */ }
            }

            request.setAttribute("data", studentdata);
            RequestDispatcher rd = request.getRequestDispatcher("admindata.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("showdept")) {
            Connection con1 = ((methods) methodInstance).connectDB(); // Corrected connection method
            ResultSet ins = null;
            List<String> departmentData = new ArrayList<>();

            try (Statement inssmt = con1.createStatement()) {
                String mySQL = "SELECT * FROM DEPARTMENT";
                ins = inssmt.executeQuery(mySQL);
                while (ins.next()) {
                    departmentData.add(ins.getString("DEP_ID"));
                    departmentData.add(ins.getString("DEP_NAME"));
                }
            } catch (SQLException e) {
                try (PrintWriter out = response.getWriter()) {
                    out.println("Error retrieving department data: " + e.getMessage());
                }
            } finally {
                try { if (ins != null) ins.close(); } catch (SQLException e) { /* Handle Exception */ }
                try { if (con1 != null) con1.close(); } catch (SQLException e) { /* Handle Exception */ }
            }

            request.setAttribute("depdata", departmentData);
            RequestDispatcher rd = request.getRequestDispatcher("adminDepData.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("showallinstructor")) {
            Connection con1 = methodInstance.connectDB(); // Corrected connection method
            ResultSet ins = null;
            List<String> instructorData = new ArrayList<>();

            try (Statement inssmt = con1.createStatement()) {
                String mySQL = "SELECT * FROM instructor";
                ins = inssmt.executeQuery(mySQL);
                while (ins.next()) {
                    instructorData.add(ins.getString("INS_ID"));
                    instructorData.add(ins.getString("INS_FIRST_NAME"));
                    instructorData.add(ins.getString("INS_LAST_NAME"));
                    instructorData.add(ins.getString("INS_DOB"));
                    instructorData.add(ins.getString("INS_SEX"));
                    instructorData.add(ins.getString("INS_ADDRESS"));
                    instructorData.add(ins.getString("EMAIL"));
                    instructorData.add(ins.getString("INS_PHONE"));
                    instructorData.add(ins.getString("DEP_ID"));
                }
            } catch (SQLException e) {
                try (PrintWriter out = response.getWriter()) {
                    out.println("Error retrieving instructor data: " + e.getMessage());
                }
            } finally {
                try { if (ins != null) ins.close(); } catch (SQLException e) { /* Handle Exception */ }
                try { if (con1 != null) con1.close(); } catch (SQLException e) { /* Handle Exception */ }
            }

            request.setAttribute("insdata", instructorData);
            RequestDispatcher rd = request.getRequestDispatcher("adminInsData.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("showcourse")) {
            Connection con1 = methodInstance.connectDB(); // Corrected connection method
            ResultSet ins = null;
            List<String> courseData = new ArrayList<>();

            try (Statement inssmt = con1.createStatement()) {
                String mySQL = "SELECT * FROM course";
                ins = inssmt.executeQuery(mySQL);
                while (ins.next()) {
                    courseData.add(ins.getString("COU_ID"));
                    courseData.add(ins.getString("COU_TITLE"));
                    courseData.add(ins.getString("COU_DESC"));
                    courseData.add(ins.getString("COU_CREDIT"));
                }
            } catch (SQLException e) {
                try (PrintWriter out = response.getWriter()) {
                    out.println("Error retrieving course data: " + e.getMessage());
                }
            } finally {
                try { if (ins != null) ins.close(); } catch (SQLException e) { /* Handle Exception */ }
                try { if (con1 != null) con1.close(); } catch (SQLException e) { /* Handle Exception */ }
            }

            request.setAttribute("coudata", courseData);
            RequestDispatcher rd = request.getRequestDispatcher("adminCouData.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
