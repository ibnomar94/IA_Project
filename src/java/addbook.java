/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ibnomar
 */
@WebServlet (name="addbook",urlPatterns={"/addbook"})
public class addbook extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession(true);
            String username = "root";
            String pass = "";
            String JDBC_DRIVER="com.mysql.jdbc.Driver";  
            String DB_URL="jdbc:mysql://localhost/Ia_library";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, username, pass);
            Statement stmt = conn.createStatement();
            Statement stmt2 = conn.createStatement();
            Statement stmt3 = conn.createStatement();
            String sql;
            String title = request.getParameter("title");
            String pubyear = request.getParameter("publishing_year");
            String author = request.getParameter("author_name");
            String isbn = request.getParameter("isbn");
            String numofcop = request.getParameter("available_copies");   
            String addedby = (String) session.getAttribute("id");
            sql = "INSERT INTO `book`(`title`, `publishing_year`, `author_name`, `isbn`, `available_copies`, `added_by`) VALUES ('"+title+"','"+pubyear+"','"+author+""
                    + "','"+isbn+"','"+numofcop+"','"+addedby+"')";
            int check  ;
            try {
               check = stmt.executeUpdate(sql);
               if(check!=0){
            String sql2;
            sql2="SELECT id , added_by FROM book ORDER BY id DESC LIMIT 1";
            ResultSet rs ;
            rs = stmt2.executeQuery(sql2);
            while (rs.next()){
                 String id = rs.getString(1);
                 String added_by = rs.getString(2);
                 for(int j=0 ; j< Integer.parseInt(numofcop) ; j++){
                 String sql3="INSERT INTO `book_copy`(`book_id`,`added_by`) VALUES ('"+id+"','"+added_by+"')";
                 stmt3.executeUpdate(sql3);    
                 } 
                     response.sendRedirect("adminprofile.jsp");
                
                 
            }
          
            }
            }
            catch(Exception e){             
                out.println(e.getMessage());
            }

            stmt.close();
            stmt2.close();
            stmt3.close();
            conn.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addbook.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addbook.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addbook.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addbook.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
