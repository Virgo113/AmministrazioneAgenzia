<%@page import="java.util.List"%>
<%@page import="com.generation.agenzia.entities.Viaggio"%>
<%@ include file="header.jsp"%>

<!-- ciclare una lista di libri e mostrare una tabella html, ogni titolo porter� al dettaglio.jsp del libro -->


<h1>Elenco Viaggi</h1>

<!-- 
<div class="row justify-content-end">
    <div class="col align-self-end"><a href="/gestioneviaggi/list/aggiungi" class="btn btn-primary" type="submit">Aggiungi </a></div>
</div> 
-->

<div class="container">
    <div class="row">
        <div class="col align-self-start">

        </div>
        <div class="col align-self-center">

        </div>
        <div class="col align-self-end">
            <div class="row">
                <div class="col align-self-start">

                </div>
                <div class="col align-self-center">

                </div>
                <div class="col align-self-end">
                    <a href="/gestioneviaggi/list/aggiungi" class="btn btn-primary" type="submit"> Aggiungi </a>
                </div>
            </div>
        </div>
    </div>
</div>

<table class="table table-warning table-striped" id="elenco">
    <tr>
        <th style="text-align: center;" >Destinazione</th>
        <th style="text-align: center;" >Durata (gg)</th>
        <th style="text-align: center;" >Prezzo</th>
    </tr>

    <% for(Viaggio v : (List<Viaggio>) request.getAttribute("viaggi")) {%>
    <tr>
        <td style="text-align: center;" ><em><strong><a style="text-decoration: none; color: #9E481F;" href="/gestioneviaggi/list/<%= v.getId() %>"><%= v.getDestinazione() %></strong></em></a></td>
        <td style="text-align: center;" ><%= v.getDurata() %></td>
        <td style="text-align: center;" ><%= v.getPrezzo() %> <i>a persona</i></td>
    </tr>
    <%} %>



</table>

<%@ include file="footer.jsp"%>