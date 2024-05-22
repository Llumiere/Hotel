<%-- 
    Document   : test
    Created on : 4 Mar 2024, 10:50:26
    Author     : ovie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <%-- this is a test jsp page--%>
    <%!
        int a = 5;
        
        public int add(){
        a =a + 20;
        return a;
        }
        
    %>
    <%
        int num = -5;
        if(num>0){
            out.print("Its a positive number");
        }
        else{
            out.print("Its a negative number");
        }
        String[] err ={"Ade", "Alonso", "Pedro", "McQuinn"};
        request.setAttribute("err", err);
        

        String[] names ={"Nonso", "Fikayo", "Joshua", "tobi"};
        String[] names1 ={"Jojo", "Wahala", "Lolly", "Popo"};
        pageContext.setAttribute("names", names);
        session.setAttribute("nana", names1);
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <h2> The product of 2 * 5 is <%=add()%> </h2>
        <c:set var="name" value="Fikayo"/>
        <c:out value="My name is ${name}"></c:out><br/>
        <c:out value="This is printed by the <c:out> tag"></c:out>

        <c:if test="${2>1}" >
            <c:out value="It is greater"/><br/>
        </c:if>

        <c:choose>
            <c:when test="${1>9}">
                <% out.print("it is greater");%><br/>
            </c:when>
            <c:otherwise>
                <% out.print("it is lesser");%><br/>
            </c:otherwise>
        </c:choose>

        <c:forEach var="i" begin="1" end="5">
            <c:out value="This is a loop ${i}"/><br/>
        </c:forEach>

        <!--pageContext-->
        <c:forEach var="i" items="${pageScope.names}">
            <c:out value="${i}"/>
        </c:forEach>

        <!--request-->
        <c:forEach var="i" items="${err}">
            <c:out value="${i}"/>
        </c:forEach>
        <!--session-->
        <c:forEach var="i" items="${nana}">
            <c:out value="${i}"/>
        </c:forEach>


        //////////////////////////////////////////////////////////////////////////////////
        <h2>Date Format</h2>
        <c:set var="now" value="<%= new java.util.Date()%>"/>

        <p>Formatted Date(1): <fmt:formatDate type="time" value="${now}" /></p>

        <p>Formatted Date(1): <fmt:formatDate type="date" value="${now}" /></p>

        <p>Formatted Date(1): <fmt:formatDate type="both" value="${now}" /></p>

        <p>Formatted Date(1): <fmt:formatDate type="both" dateStyle="short" value="${now}" /></p>

        <p>Formatted Date(1): <fmt:formatDate type="both" dateStyle="long" value="${now}" /></p>

        <p>Formatted Date(1): <fmt:formatDate type="both" timeStyle="short" value="${now}" /></p>

        <p>Formatted Date(1): <fmt:formatDate type="both" timeStyle="long" value="${now}" /></p>


        <c:set var="now1" value="20-10-2022"/>
        <fmt:parseDate var="parsedate" value="${now1}" pattern="dd-MM-yyyy"/>
        <c:out value="${parsedate}"/><br/>


        <h3>Number format</h3>
        <c:set var="num" value="120000.2309"/>
        <p>Formatted Number(1): <fmt:formatNumber value="${num}" type="currency"/></p>

        <p>Formatted Number(1): <fmt:formatNumber maxIntegerDigits="4" value="${num}" type="number" /></p>

        <p>Formatted Number(1): <fmt:formatNumber maxFractionDigits="3" value="${num}" type="number" /></p>

        <p>Formatted Number(1): <fmt:formatNumber groupingUsed="false" value="${num}" type="number" /></p>

        <p>Formatted Number(1): <fmt:formatNumber maxIntegerDigits="3" value="${num}" type="percent" /></p>

        <p>Currency in USA</p>
        <fmt:setLocale value="en_US"/>
        <p><fmt:formatNumber value="${num}" type="currency"/></p>

        <p>Currency in China</p>
        <fmt:setLocale value="zh_HK"/>
        <p><fmt:formatNumber value="${num}" type="currency"/></p>

        <p>Currency in German</p>
        <fmt:setLocale value="nl_NL"/>
        <p><fmt:formatNumber value="${num}" type="currency"/></p>

        <p>Currency in Nigeria</p>
        <fmt:setLocale value="en_NG"/>
        <p><fmt:formatNumber value="${num}" type="currency"/></p>

        <p>Currency in Nigeria</p>
        <fmt:setLocale value="en_NG"/>
        <p><c:out value="&#x20bf${num}"/></p>

        ///////////////////////////////////////////////////
        <c:set var="text" value="Fikayo is a goat"/>
        <h2>Length</h2>
        ${fn:length(text)}

        <h2>Split</h2>
        <c:forEach var="string" items="${fn:split(text,' ')}">
            <c:out value="${string}"/><br/>
        </c:forEach>


        <h2>Cases</h2>
        UpperCase: ${fn:toUpperCase(text)}<br/>
        LowerCase: ${fn:toLowerCase(text)}

        /////////////////////////////////////////////////////////////////////////////
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost/Hotel"  
                           user="root"  password="password"/>  
        
        <sql:query dataSource="${db}" var="rs">  
            SELECT * from Customers;  
        </sql:query>
            
            <table border="1">
                <tr>
                    <th>Firstname</th>                    
                    <th>Lastname</th>
                    <th>Email</th>

                </tr>
                <c:forEach var="table" items="${rs.rows}">
                    <tr>
                        <td><c:out value="${table.Firstname}"/></td>
                        <td><c:out value="${table.Lastname}"/></td>
                        <td><c:out value="${table.Email}"/></td>
                    </tr>
                </c:forEach>
                
            </table>

        <table border="1" width="100%">
            <tr>
                <td width="100%" colspan="2">
                    <p align="center">
                        <fmt:formatDate value="${now}" type="both"  />
                    </p>
                </td>
            </tr>
            <c:forEach var="zone" items="<%= java.util.TimeZone.getAvailableIDs()%>">
                <tr>
                    <td width="30%">
                        <c:out value="${zone}"/>
                    </td>
                    <td width="70%">
                        <fmt:timeZone value="${zone}">
                            <fmt:formatDate type="time" timeStyle="long" value="${now}" />
                        </fmt:timeZone>
                    </td>
                </tr>
            </c:forEach>
        </table>


    </body>
</html>
