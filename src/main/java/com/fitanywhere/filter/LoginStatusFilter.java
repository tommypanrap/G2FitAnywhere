package com.fitanywhere.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;

// 此Filter會檢測會員登入狀態 若未登入則強制跳轉登入畫面 並且在登入畫面觸發Alert告訴使用者須先登入
// 請在下方自行放入要過濾的網址 
// @WebFilter(urlPatterns = {"/secured/*", "/api/*", "/admin/*"})

@WebFilter(urlPatterns = {"/front-end/xxxx/xxx.jsp", "/front-end/xxxx/xxx.jsp"})
public class LoginStatusFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 初始化過濾器時調用，如果需要的話
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false); // 獲取現有的 session，不創建新的 session
        
        // 檢查 session 是否存在以及 loginStatus 是否為 logged_in
        if (session == null || !"logged_in".equals(session.getAttribute("loginStatus"))) {
            // 添加一個URL參數來傳遞消息
            String loginPage = httpRequest.getContextPath() + "/front-end/user/user_login.jsp";
            String message = "您必須登入才能訪問該頁面";
            httpResponse.sendRedirect(loginPage + "?error=" + URLEncoder.encode(message, "UTF-8"));
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
        // 過濾器銷毀時調用，清理資源等操作
    }
}
