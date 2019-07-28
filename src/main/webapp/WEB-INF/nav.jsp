<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav id="sidebar">

        <ul class="list-unstyled components">
            <p>Dummy Heading</p>
            <li class="active">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Home</a>
                <ul class="collapse list-unstyled" id="homeSubmenu">
                    <li>
                    	<span> Home/</span>
                    </li>
                    <li>
                    	<span> Home/</span>
                    </li>
                    <li>
                    	<span> Home/</span>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#">About</a>
            </li>
            <li>
                <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Pages</a>
                <ul class="collapse list-unstyled" id="pageSubmenu">
                    <li>
                    	<span> Home/</span>
                    </li>
                    <li>
                    	<span> Home/</span>
                    </li>
                    <li>
                    	<span> Home/</span>
                    </li>
                </ul>
            </li>
        </ul>

    </nav>
    
<style>
   .wrapper {
    display: flex;
    width: 100%;
}

#sidebar {
    width: 250px;
    /*position: fixed;*/
    /*top: 0;*/
    left: 0;
    height: 100vh;
    z-index: 999;
    background: #7386D5;
    color: #fff;
    transition: all 0.3s;
}
</style>