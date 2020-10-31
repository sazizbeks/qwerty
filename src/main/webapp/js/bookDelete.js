$(document).ready(function (){
    $('.delete').click(function (){
        let xhttp = new XMLHttpRequest();
        var isbn = $(this).attr('id');


        xhttp.onreadystatechange = function (){
            if(this.readyState === 4 && this.status === 200){
                location.reload();
            }
        };

        let toServlet = isbn.toJSONString;
        xhttp.open("POST", "${pageContext.request.contextPath}/bookServlet?isbn=" + isbn, true);
        xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhttp.send(toServlet);

    });
});
