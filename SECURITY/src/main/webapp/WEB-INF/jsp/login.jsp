<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
			<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
			<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
			<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
			</script>
	<script type="text/javascript">
	$(function(){
	    $('.button-checkbox').each(function(){
			var $widget = $(this),
				$button = $widget.find('button'),
				$checkbox = $widget.find('input:checkbox'),
				color = $button.data('color'),
				settings = {
						on: {
							icon: 'glyphicon glyphicon-check'
						},
						off: {
							icon: 'glyphicon glyphicon-unchecked'
						}
				};

			$button.on('click', function () {
				$checkbox.prop('checked', !$checkbox.is(':checked'));
				$checkbox.triggerHandler('change');
				updateDisplay();
			});

			$checkbox.on('change', function () {
				updateDisplay();
			});

			function updateDisplay() {
				var isChecked = $checkbox.is(':checked');
				// Set the button's state
				$button.data('state', (isChecked) ? "on" : "off");

				// Set the button's icon
				$button.find('.state-icon')
					.removeClass()
					.addClass('state-icon ' + settings[$button.data('state')].icon);

				// Update the button's color
				if (isChecked) {
					$button
						.removeClass('btn-default')
						.addClass('btn-' + color + ' active');
				}
				else
				{
					$button
						.removeClass('btn-' + color + ' active')
						.addClass('btn-default');
				}
			}
			function init() {
				updateDisplay();
				// Inject the icon if applicable
				if ($button.find('.state-icon').length == 0) {
					$button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
				}
			}
			init();
		});
	});

		
	</script>
<style type="text/css">
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>

</head>

<body>
		<c:url value="/login" var="loginProcessingUrl"/>
		<form action="${loginProcessingUrl}" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		   <fieldset>
			 
			   <!-- use param.error assuming FormLoginConfigurer#failureUrl contains the query parameter error -->
			   <c:if test="${param.error != null}">
				   <div>
					   Failed to login.
					   <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
						 Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
					   </c:if>
				   </div>
			   </c:if>
	   
			   <c:if test="${param.logout != null}">
				   <div style="font-family: fantasy; font-style: italic;font-size: x-large;">
					   You have been logged out.
				   </div>
			   </c:if>
		<div class="row" style="margin-top:20px">
				<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<form role="form">
						<fieldset>
							<h2>Sign In</h2>
							<hr class="colorgraph">
							<div class="form-group">
								<input type="username" name="username" id="username" class="form-control input-lg" placeholder="Username">
							</div>
							<div class="form-group">
								<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
							</div>
							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info">Remember Me</button>
								<input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
								<a href="" class="btn btn-link pull-right">Forgot Password?</a>
							</span>
							<hr class="colorgraph">
							<div class="row">
								<div class="col-xs-6 col-sm-6{width:100%} col-md-6" >
									<input type="submit" class="btn btn-lg btn-success btn-block" value="Login">
								</div>
								
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			
	
	</fieldset>
</form>
</body>
</html>