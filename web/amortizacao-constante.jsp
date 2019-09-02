<%-- 
    Document   : amortizacao-constante
    Created on : 31/08/2019, 14:24:40
    Author     : T2S.JOHNATAS
--%>

<%@page import="br.com.fatec.model.AmortizacaoConstante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% AmortizacaoConstante amortizacao = new AmortizacaoConstante(5, 40000.00, 0.10); %>;
        <table>
            <tr>
                <td> 40.000,00</td>
                <td> -- </td>
                <td> -- </td>
                <td> --</td>
                <td> --</td>

            </tr>
            <% for (int x = 0; x < 5; x++) {%>
            <tr>
                <td> <%= x + 1%></td>
                <td> <%=amortizacao.getValorTotal()%> </td>
                <td> <%=amortizacao.getAmortizacao()%> </td>
                <td> <%=amortizacao.calcularJurosAtual()%> </td>
                <td> <%=amortizacao.calcularPrestacaoAtual()%> </td>

            </tr>
            <%}%>
            <tr>
                <td> Total </td>
                <td> 0</td>
                <td> <%=amortizacao.getValorTotalDaAmortizacao()%> </td>
                <td> <%=amortizacao.getValorTotalDosJuros()%> </td>
                <td> <%=amortizacao.getValorTotalDasPrestacoes()%> </td>

            </tr>
        </table>
    </body>
</html>
