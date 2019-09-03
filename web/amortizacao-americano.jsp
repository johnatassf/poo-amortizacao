<%-- 
    Document   : amortizacao-americano
    Created on : 31/08/2019, 15:47:38
    Author     : matheus.marques
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="br.com.fatec.model.AmortizacaoAmericana"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americano</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <body>
        <%@include file="/WEB-INF/jspf/header.jspf"  %>
        <div class="containter row justify-content-around" style="margin-top: 30px">
            <div >
                <form>
                    <label >Amortização Americana</label>
                    <div class="form-group">
                        <input type="text" class="form-control" name="quantidadeDeMeses"placeholder="Quantidade de meses">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="valorJuros" placeholder="Juros">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="valorDivida" placeholder="Valor Total">
                    </div>
                    <button type="submit" class="btn btn-primary">Calcular</button>
                </form>
            </div>
            <div>
                <% if (request.getParameter("quantidadeDeMeses") != null
                            & request.getParameter("valorJuros") != null
                            & request.getParameter("valorDivida") != null) {
                        double valorDivida = Double.parseDouble(request.getParameter("valorDivida"));
                        int quantidadeDeMeses = Integer.parseInt(request.getParameter("quantidadeDeMeses"));
                        double valorJuros = Double.parseDouble(request.getParameter("valorJuros"));

                        AmortizacaoAmericana amortizacaoAmericana = new AmortizacaoAmericana(quantidadeDeMeses, valorJuros, valorDivida);
                %>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">N° Prestação</th>
                            <th scope="col">Amortização</th>
                            <th scope="col">Juros</th>
                            <th scope="col">Dívida</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (double[] vetor : amortizacaoAmericana.CalcularJuros()) { %>
                        <tr>
                            <% for (double val : vetor) {%>
                            <th><%=val%><th>
                                <% } %>
                        </tr>
                        <% }%>
                        <tr>
                        </tr>
                    </tbody>
                </table>
                <%}%>
            </div>
        </div>
        <%@include file="/WEB-INF/jspf/footer.jspf"  %>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
