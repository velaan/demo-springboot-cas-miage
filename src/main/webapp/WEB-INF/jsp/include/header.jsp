<%@ include file="/WEB-INF/jsp/include/include.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <title><spring:message code="appli.title"/></title>	

        <script type="text/javascript" src="<spring:url value="/js/jquery.min.js"/>"></script> 
        <script type="text/javascript" src="<spring:url value="/js/bootstrap.min.js"/>"></script> 
        
        <link rel='stylesheet' href='<spring:url value="/css/bootstrap.min.css"/>' type="text/css" media="screen, projection"/>  
        <link rel='stylesheet' href='<spring:url value="/css/font-awesome.min.css"/>' type="text/css" media="screen, projection"/>
        <link rel="shortcut icon" type="image/x-icon" href="<spring:url value="/images/favicon.ico"/>" />
        
        <!--[if lt IE 9]>  
            <script src="<spring:url value="/js/html5shiv.js"/>"></script>
            <script src="<spring:url value="/js/respond.min.js"/>"></script>
        <![endif]-->
    </head>

    <body>
        <div id="wrap">
        <nav id="main-navbar" class="navbar navbar-static-top navbar-inverse" role="navigation">   
            <div class="container-fluid">
                <div class="navbar-header pull-left">

                    <a class="navbar-brand" href="<spring:url value="/"/>">
                        <spring:message code="appli.title"/>
                    </a>
                </div>
                <div id="user-block" class="navbar-header pull-right">
                    <ul class="nav navbar-nav">                                                                                    
                            <sec:authorize access="isAnonymous()">
                                <li id="auth">
                                    <a href="<spring:url value="/connexion"/>">
                                        <i class="fa fa-sign-in fa-lg" aria-hidden="true"></i>
                                        <spring:message code="header.connexion"/>
                                    </a>
                                </li>
                            </sec:authorize>

                            <sec:authorize access="isAuthenticated()">
                                <li id="auth">
                                    <spring:url var="logoutUrl" value="/logout"/>                                
                                    <form method="post" action="${logoutUrl}" id="form-logout" class="navbar-form">
                                        <sec:csrfInput />                                       

                                        <button type="submit" class="btn btn-link">
                                            <i class="fa fa-sign-out fa-lg" aria-hidden="true"></i>
                                            <spring:message code="header.deconnexion"/>
                                        </button>
                                    </form>
                                </li>
                            </sec:authorize>  

                        </ul>

                    </div>
                </div>
            </nav>

            <sec:authorize access="isAuthenticated()">
                <div id="ident" class="text-right">
                    <spring:message code="header.connected"/> <sec:authentication property="principal.firstName" /> <sec:authentication property="principal.lastName" />
                </div>
            </sec:authorize>

            <div class="container">
                
                <nav class="navbar navbar-default" id="menu">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" id="nav-icon" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-collapse" aria-expanded="false">
                                <span class="sr-only"><spring:message code="menu.collapse"/></span>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="menu-collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="#">Menu 1</a></li>
                                <li><a href="#">Menu 2</a></li>
                            </ul>      
                        </div>
                    </div>
                </nav>
            </div>
            <section id="contenu" class="container">