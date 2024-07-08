<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost/phi_hidupbumisejahtera?user=root&password=" 
	catalogUri="/WEB-INF/queries/00000046001-ThomasJanuardy of UAS Data Warehouse Lab Odd 2022-2023.xml">
select {[Measures].[Total Residential Gas Used per Year], [Measures].[Total Residential Electricity Used per Year], [Measures].[Total Recorded Buildings]} on columns,
{[Building]} on rows from Hidup_Bumi_Sejahtera
</jp:mondrianQuery>

<c:set var="title01" scope="session">PHI Hidup Bumi Sejahtera (Building Data)</c:set>