<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>HELLO</title>
<body>
<h1>HiHi</h1>
   <h2>${message}</h2>
   <pre>${result}</pre>
</body>
</head>
</html>
 -->
<!DOCTYPE html>
<html>
 
<head>
  <style>
    .container{
       
    }
     
    *{
      box-sizing: border-box;
    }
    .container{
      border:5px solid black;
    }
    .container>*{
      border:5px solid red;
    }
    .container>.content>*{
      border:5px solid green;
    }
    .container .content{
      padding-left:200px;
      /*padding-right:150px;*/
      overflow: hidden;
    }
    .container .content>*{
      float:left;
      padding-bottom:2500px;
      margin-bottom:-2500px;
    }
    .container .content main{
      width:100%;
    }
    .container .content nav{
      width:200px;
      margin-left: -100%;
      left:-200px;
      position: relative;
    }
    .container footer{
      clear: both;
    }
     
    @media (max-width:599px){
      .container .content{
        padding-left:0;
        padding-right:0;
        overflow: visible;
      }
      .container .content>*{
        float:none;
        padding-bottom:0;
        margin-bottom:0;
      }
      .container .content main{
        width:100%;
      }
      .container .content nav{
        width:auto;
        margin-left: 0;
        left:0;
        position: relative;
      }
    }
  </style>
</head>
 
<body>
  <div class="container">
  <jsp:include page="../header.jsp"/>
    <section class="content">
      <main>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem facere itaque nisi ipsum voluptate alias, ea vitae nemo, voluptas facilis sunt tenetur harum quos cumque unde aut obcaecati atque modi nobis. Maxime molestias, veritatis alias sapiente quo fugiat provident. Provident totam asperiores laboriosam dignissimos, cupiditate, voluptatum dolore nam repellat architecto minus consequuntur. Officiis magni reprehenderi!
      </main>
  <jsp:include page="../nav.jsp"/>
    </section>
  <jsp:include page="../footer.jsp"/>
  </div>
</body>
 
</html>

