<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>EDMA Admin-Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
       <ul>
        <li><a href="./admin_login.html">Logout</a></li>
      </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </div>
</div>

<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="../index.html">Student Management Portal</a></h1>
      <p>Alibata University</p>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>

<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li><a href="./admin-main-faculty-add.html">Home</a></li>
        
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>

<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="sidebar one_quarter first"> 
        <!-- ################################################################################################ -->
        <h6>User Account Management</h6> 
        <nav class="sdb_holder">
          <ul>
            <li>Student Manager
             <ul>
                <li><a href='<c:url value="/smp/admin_pending.html"  />'>Pending Account</a></li>
                <li><a href="./admin-main-student-users.html">Disable Account</a></li>
              </ul>
             </li>
            <li>Faculty Manager
              <ul>
                <li><a href='<c:url value="/smp/admin_add_faculty.html"  />'>Adding Account</a></li>
                <li><a href="./admin-main-faculty-disable.html">Disable Account</a></li>
              </ul>
            </li>
             <li><a href='<c:url value="/smp/admin_add_course.html"  />'>Courses Manager</a></li>
             <li><a href='<c:url value="/smp/admin_add_department.html"  />'>Departments</a></li>
          </ul>
        </nav>
        
        <!-- ################################################################################################ --> 
      </div>
      
      <div id="content" class="three_quarter"> 
        <!-- ################################################################################################ -->
       <h1>Manage Faculty</h1>
     
 
        <form:form commandName="facultyForm" method="POST">
        
            <label >ID <span>*</span></label>
            <form:input path="facultyId" size="22"/>
            
            <label >First Name <span>*</span></label>
            <form:input path="firstName" size="22"/>
            
            <label >Middle Name <span>*</span></label>
            <form:input path="middleName" size="22"/>
            
            <label >Last Name <span>*</span></label>
            <form:input path="lastName" size="22"/>
            
            <label >Department Assigned<span>*</span></label>
            <form:select path="deptId" items="${ deptId }"/>
            
            <label >Username <span>*</span></label>
            <form:input path="username" size="22"/>
            
             <label >Username <span>*</span></label>
            <form:input path="password" size="22"/>
            
          <div>
            <input name="submit" type="submit" value="Add Faculty">
         
          </div>
        </form:form>
         <br/>
        <h1>Faculty Members</h1>
        
        
          <table>
            <thead>
              <tr>
                <th>Faculty ID</th>
                <th>Department ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Middle Name</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              
              <c:forEach var="member" items="${ faculty }">
              <tr>
                <td><c:out value="${ member.facultyId }"/></td>
                <td><c:out value="${ member.deptId }"/></td>
                <td><c:out value="${ member.firstName }"/></td>
                <td><c:out value="${ member.middleName }"/></td>
                <td><c:out value="${ member.lastName }"/></td>
                <td></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
      
        
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>

<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="../images/demo/worldmap.png" alt="">
          <figcaption><a href="#">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
        <address>
        Alibata University<br>
        Makati City, Manila<br>
        Philippines<br>
        1233<br>
        <br>
        <i class="fa fa-phone pright-10"></i> +63 939917 5107<br>
        <i class="fa fa-envelope-o pright-10"></i> <a href="#">admin@alibata-university.com</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-flickr" href="#"><i class="fa fa-flickr"></i></a></li>
          <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
        <form class="clear" method="post" action="#">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="" placeholder="Enter Email Here&hellip;">
            <button class="fa fa-sign-in" type="submit" title="Sign Up"><em>Sign Up</em></button>
          </fieldset>
        </form>
      </div>
      <!-- ################################################################################################ --> 
    </footer>
  </div>
</div>

<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Webmaster</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.alibatabusiness.com/" title="Alibata University">OS Templates</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>