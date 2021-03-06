<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    	
        $("#submit").click(function() {
            
        	//유효성 검사.
        	if($("#id").val().trim() == "") {
        		alert("아이디를 입력해주세요.");
        		return false;
        	}
        
        
        //ajax 사용.
        
        var objParams = {
        		id			:	$("#id").val(),
        		password		:	$("#password").val()
        };
        
        //ajax 호출
        
        $.ajax ({
        	
        		url			:	"<%=request.getContextPath()%>/member/login",
        		dataType		:	"json",
        		contentType	:	"application/x-www-form-urlencoded; charset=UTF-8",
        		type			:	"post",
        		async		:	false,
        		data			:	objParams,
        		success		:	function(retVal) {
        			
        			if(retVal.code != "OK") {
        				alert("아이디나 비밀번호를 확인해주세요.");
        			}	else {
        				
        				location.href="<%=request.getContextPath()%>/board/list"
        			}
        		},
        		error		:	function(request,status,error) {
        			console.log("AJAX_ERROR");
        		}
        		
        	
       	 });
    	
      
  	  	})
    })
    

    
    

    
    
    
</script>
    <style>
        
       
        
    </style>

</head>



<body>
    
    <fieldset>
    <legend>로그인</legend>
        <form name="loginform" id="loginform" method="post" action="/member/login"> 
        <table>
            <tr>
                <td> 아이디 </td>
                <td> <input type="text" id="id" name="id" placeholder="아이디"></td>
                <td rowspan="2"><input type="button" id="submit" name="submit" value="로그인"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td> <input type="password" id="password" name="password" placeholder="비밀번호"></td>
            </tr>
        </table>
        </form>
    </fieldset>
</body>
