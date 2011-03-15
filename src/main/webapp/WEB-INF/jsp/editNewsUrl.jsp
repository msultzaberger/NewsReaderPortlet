<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<html xmlns="http://www.w3c.org/1999/xhtml" xmlns:jsp="http://java.sun.com/JSP/Page"
    xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:portlet="http://java.sun.com/portlet"
    xmlns:html="/WEB-INF/tags/html" xmlns:form="http://www.springframework.org/tags/form"
    xmlns:validator="http://www.springmodules.org/tags/commons-validator"
    xml:lang="en" lang="en">
    <jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
    <head>
        <script type="text/javascript">
        </script>
    </head>
    <body>
		<validator:javascript formName="newsListingCommand"
		    staticJavascript="false" xhtml="true" cdata="false"/>
        <portlet:actionURL var="postUrl"><portlet:param name="action" value="editUrl"/></portlet:actionURL>

		<h3>Edit news feed</h3>

        <form:form name="news" commandName="newsListingCommand" action="${postUrl}">
        	<form:hidden path="id"/>
			<p>
				<label class="portlet-form-field-label">News feed name:</label>
				<form:input path="name" size="50"/>
				<form:errors path="name" cssClass="portlet-msg-error"/>
			</p>
           	<p>
                <label class="portlet-form-field-label">News feed URL:</label>
                <form:input path="url" size="50"/>
				<form:errors path="url" cssClass="portlet-msg-error"/>
			</p>
			<br/>
			<p>
				Note: News feed URLs should start with http:// or https://.
			</p>
			<br/>
            <p>
	            <button type="submit" class="portlet-form-button">Save news feed</button>
            </p>
        </form:form>
        <br />
        <hr />
        <p>
        	<a href="<portlet:renderURL><portlet:param name="action" value="editPrefences"/></portlet:renderURL>"><img src="<c:url value="/images/arrow_left.png"/>" style="vertical-align: middle"> Return to main edit page</a>
        </p>
    </body>
</html>
