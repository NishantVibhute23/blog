<%--
    Document   : header.jsp
    Created on : Mar 13, 2019, 12:42:17 PM
    Author     : nishant.vibhute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<header id="header">
    <div class="container main-menu">
        <div class="row align-items-center justify-content-between d-flex">
            <div id="logo">
                <a href="index.html"><img src="visitors/img/logoMadhuri.png" alt="" title="" /></a>
            </div>
            <nav id="nav-menu-container">
                <ul class="nav-menu">
                    <li><a href="home">Home</a></li>
                    <li><a href="about">About</a></li>
                    <li><a href="services">Services</a></li>
                    <li><a href="portfolio">Portfolio</a></li>
                    <li><a href="<s:url action="subscription"/>">Pricing</a></li>
                    <!--			          <li class="menu-has-children"><a href="">Blog</a>
                                                        <ul>
                                                          <li><a href="blog-home.html">Blog Home</a></li>
                                                          <li><a href="blog-single.html">Blog Single</a></li>
                                                        </ul>
                                                      </li>
                                                      <li class="menu-has-children"><a href="">Pages</a>
                                                        <ul>
                                                      <li><a href="elements.html">Elements</a></li>
                                                              <li class="menu-has-children"><a href="">Level 2 </a>
                                                                <ul>
                                                                  <li><a href="#">Item One</a></li>
                                                                  <li><a href="#">Item Two</a></li>
                                                                </ul>
                                                              </li>
                                                        </ul>
                                                      </li>					          					          		          -->
                    <li><a href="contactme">Contact</a></li>

                    <s:if test="#session.login">
                        <li class="menu-has-children"><a href=""><s:property value="#session.userBean.userName"/></a>
                            <ul>
                                <li><a href="">My Profile</a></li>
                                <li><hr/></li>
                                <li><a href="<s:url action="logoutUser"/>">Logout</a></li>
                            </ul>
                        </li>



                    </s:if>
                    <s:else>
                        <li><a href="login">Login</a></li>
                        </s:else>

                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
    </div>
</header><!-- #header -->
