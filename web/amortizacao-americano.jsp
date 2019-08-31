<%-- 
    Document   : amortizacao-americano
    Created on : 31/08/2019, 15:47:38
    Author     : matheus.marques
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americano</title>
    </head>
    <body>
        <h1>Amortização Americano</h1>
        <form>
            <label for="amount">Quantia: R$ </label>
            <input type="number" id="amount" />
            <br>
            <label for="months">Período (Meses): </label>
            <input type="number" id="months" />
            <br>
            <label for="tax">Taxa: %</label>
            <input type="number" id="tax" />
            <br>
            <button type="submit">Calcular amortização</button>
        </form>
        <h2>Tabela de Amortização</h2>
        <table>
            <thead>
                <tr>
                    <th>N° Prestação</th>
                    <th>Amortização</th>
                    <th>Juros</th>
                    <th>Dívida</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>N° Prestação</td>
                    <td>Amortização</td>
                    <td>Juros</td>
                    <td>Dívida</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
