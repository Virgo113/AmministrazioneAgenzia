<%@page import="com.generation.agenzia.entities.PrenotazioneVista"%>
<%@page import="java.util.List"%>
<%@page import="com.generation.agenzia.entities.Prenotazioni"%>
<%@ include file="header.jsp"%>

<h2>Prenotazioni</h2>

<div class="row">
       
        
        
    <table class="table table-success table-striped" id="elenco">
        <tr>
            <th>Id Prenotazione</th>
            <th>Cognome Utente</th>
            <th>Nome Utente</th>
            <th>Destinazione Viaggio</th>
            <th>Partecipanti</th>
            
        </tr>

        <% for(PrenotazioneVista p : (List<PrenotazioneVista>) request.getAttribute("prenotazioni")) {%>
        <tr>
            <td style="text-align: center;" ><strong><%= p.getId() %></strong></td>
            <td style="text-align: center;" ><%= p.getCognome() %></td>
            <td style="text-align: center;" ><%= p.getNome() %></td>
            <td style="text-align: center;" ><%= p.getDestinazione() %></td>
            <td style="text-align: center;" ><%= p.getPartecipanti() %></td>
        </tr>
        <%} %>



    </table>




<%@ include file="footer.jsp"%>