<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<jsp:include page="/WEB-INF/jsp/header.jsp" flush="true"></jsp:include>
<jsp:include page="/WEB-INF/jsp/topMenu.jsp" flush="true"></jsp:include>
<script src='/webResource/jquery-3.3.1.js'></script>
<script>

/* $(document).ready(function() {
	// 이전달 이동 버튼 클릭
	$('#testbutton').click(function(){
		
		var data = {
			"id": 123,
			"password": 456
		};
		
		$.post({
			url:"/loginProcess.do",
			type:"POST",
			data : data,
			contentType : "application/json; charset=UTF-8",
			success: function(result){
				console.log(result);
			},
			error: function(xhr, status, error) {
				alert(error);
			}
		});
	});
}); */

</script>

    <!-- inner banner -->
    <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- login  -->
            <div class="modal-body my-5 pt-4">
            <br><br>
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Login Now</h3>
                <form action="/loginProcess.do" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Username</label>
                        <input type="text" class="form-control" placeholder="your name" name="id" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder="*****" name="password" required="">
                    </div>
                    <button id = "testbutton" type="submit" class="btn button-style-w3">Login</button>
                    <div class="row sub-w3l mt-3 mb-5">
                        <div class="col-sm-6 sub-w3layouts_hub">
                            <!-- <input type="checkbox" id="brand1" value="">
                            <label for="brand1" class="text-li text-style-w3ls">
                                <span></span>Remember me?</label> -->
                                <br><br><br>
                        </div>
                        <div class="col-sm-6 forgot-w3l text-sm-right">
                            <!-- <a href="#" class="text-li text-style-w3ls">Forgot Password?</a> -->
                        </div>
                    </div>
                    <!-- <p class="text-center dont-do text-style-w3ls text-li">Don't have an account?
                        <a href="register.html" class="font-weight-bold text-li">
                            Register Now</a>
                    </p> -->
                </form>
            </div>
            <!-- //login -->
        </div>
    </div>
    <!-- //inner banner -->

<jsp:include page="/WEB-INF/jsp/footer.jsp" flush="true"></jsp:include>