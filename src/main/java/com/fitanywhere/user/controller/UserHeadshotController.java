package com.fitanywhere.user.controller;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.fitanywhere.user.model.UserService;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

@WebServlet("/user_headshot_controller")
@MultipartConfig
public class UserHeadshotController extends HttpServlet {
    private UserService userService = new UserService(); // 確保有UserService的實例

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("uploadImage".equals(action)) {
            uploadImage(request, response);
        } else if ("viewImage".equals(action)) {
            viewImage(request, response);
        }
    }

    private void uploadImage(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        Integer uId = Integer.parseInt(request.getParameter("uId"));
        Part filePart = request.getPart("image");
        InputStream fileContent = filePart.getInputStream();
        byte[] imageBytes = new byte[fileContent.available()];
        fileContent.read(imageBytes);

        userService.saveUserHeadshot(uId, imageBytes); // 調用UserService來處理上傳的圖片
        
     // 向客戶端發送成功消息
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>圖片上傳成功</h2>");
        out.println("<p>您的圖片已成功上傳。</p>");
        out.println("</body></html>");

        
    }

    private void viewImage(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        Integer uId = Integer.parseInt(request.getParameter("uId"));
        byte[] imageBytes = userService.getUserHeadshot(uId); // 從UserService獲取圖片

        if (imageBytes != null && imageBytes.length > 0) {
            response.setContentType("image/jpeg");
            OutputStream out = response.getOutputStream();
            out.write(imageBytes);
            out.close();
        } else {
            response.getWriter().print("No image found for uId: " + uId);
        }
    }
}
