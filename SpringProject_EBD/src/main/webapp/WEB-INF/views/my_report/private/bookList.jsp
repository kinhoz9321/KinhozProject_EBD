<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>/views/bookList.jsp</title>
</head>
<body>
    <center>
        <form action="bookList.do">
            <input type="text" name="keyword" >
            <input type="submit" value="�˻�">
        </form>        
    </center>
    <table id="search-api" style="border:1px red solid">
    	<thead>
	       	<tr>
	       		<th>åǥ��</th>
	       		<th>å����</th>
	       		<th>����</th>
	       		<th>���ǻ�</th>
	       		<th>����ó ��ũ</th>
	       		<th>å�Ұ�</th>
	       		<th>����</th>
	       	</tr>
    	</thead>
    	<tbody>
        <c:forEach items="${bookList}" var ="b">
            <tr>
                <td width="100"><img src="${b.image}"/></td>
                <td width="200">${b.title}</td>
                <td width="100">${b.author}</td>
                <td width="100">${b.publisher }</td>
                <td width="200">${b.link }</td>
                <td width="300">${b.description}</td>
                <td>
                	<form action="insertform2.do">
                		<label for="title"></label>
                		<input type="hidden" id="title" name="title" value="${b.title }"/>
                		<label for=""></label>
                		<input type="submit" value="����"/>
                	</form>
                </td>
                <!-- 
                <td width="100"><input type="button" class="checkBtn" value="����"/></td>
                 -->
                
            </tr>
        </c:forEach>
    	</tbody>
    </table>
    
    <div id="result"></div>
    
    <div id="result2"></div>
</div>
<script>
	/*
	//���̺��� Row Ŭ���� �� ��������
	$("#search-api").click(function(){
		
		var str = ""
		var tdArr = new Array(); //�迭 ����
		
		//���� Ŭ���� Row(<tr>)
		var tr = $(this);
		var td = tr.children();
		
		//tr.text() �� Ŭ���� Row �� tr �� �ִ� ��� ���� �����´�.
		console.log("Ŭ���� Row�� ��� ������ : "+tr.text());
		
		//�ݺ����� �̿��ؼ� �迭�� ���� ��� ����� ���� �ִ�.
		td.each(function(i){
			tdArr.push(td.eq(i).text());
		});
		
		console.log("�迭�� ��� �� : "+tdArr);
		
		//td.eq(index)�� ���� ���� ������ ���� �ִ�.
		var image = td.eq(0).text();
		var title = td.eq(1).text();
		var author = td.eq(2).text();
		var link = td.eq(4).text();
		
		str += "* Ŭ���� row�� td�� = image. : " + image +
			", ���� : " + title +
			", ���� : " + author +
			", ��ũ : " + link ;
		
		$("#result").html("Ŭ���� ��� row�� ��� ������ = "+tr.text());
		$("#result2").html(str);
	});
	*/
	
	//��ư Ŭ���� row �Ѱ��� �� ��������
	$(".checkBtn").click(function(){
		
		var str = ""
		var tdArr = new Array(); //�迭 ����
		var checkBtn = $(this);
		
		// checkBtn.parent() : checkBtn�� �θ�� <td>�̴�.
        // checkBtn.parent().parent() : <td>�� �θ��̹Ƿ� <tr>�̴�.
        var tr = checkBtn.parent().parent();
        var td = tr.children();

		console.log("Ŭ���� row�� ��� ������ : "+tr.text());
		
        var image = td.eq(0).text();
        var title = td.eq(1).text();
        var author = td.eq(2).text();
        var publisher = td.eq(3).text();
        var link = td.eq(4).text();
        var description = td.eq(5).text();
        
        //�ݺ����� �̿��ؼ� �迭�� ���� ��� ����� �� �ִ�.
        td.each(function(i){
        	tdArr.push(td.eq(i).text());
        });
		
        console.log("�迭�� ��� �� : "+tdArr);
        /*
        str += image+
        	title+
        	author+
        	publisher+
        	link+
        	description;
        */
        title = title
        author = author
        link = link
        
        //$("#result").html(tr.text());
        $("#result2").html("���� : "+title+" ���� : "+author+" ����ó ��ũ : "+link);
        //�� ���� insertform.jsp �� �ѱ�� ���
        
	});
</script>
</body>
</html>
<!-- 
	api ����Ʈ���� ���� ��ư�� ������
	�� ���� ������ ��ܼ� ��µǴ� �ͱ��� ����.
	insertform ���� ������ �ѱ�� �ͱ����� ������. 
 -->