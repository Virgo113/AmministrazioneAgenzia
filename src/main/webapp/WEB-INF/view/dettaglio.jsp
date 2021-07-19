<%@ include file="header.jsp"%>

<a href="/gestioneviaggi/list/" class="btn btn-info" type="submit">Elenco</a>

<h1>Dettaglio viaggio</h1>

<h2>Destinazione : ${viaggio.destinazione}</h2>



<form action="/gestioneviaggi/list" method="post" class="row g-3 needs-validation" novalidate>
        
        <input type="hidden" name="id" value="${viaggio.id}">
        <input type="hidden" name="destinazione" value="${viaggio.destinazione}">
        

    <div class="col-md-4">
        <label for="validationCustom01" class="form-label">Durata</label>
        <input type="number" name="durata" min="1" max="10" class="form-control" id="validationCustom01" value="${viaggio.durata}" required>
    </div>
    <div class="col-md-4">
        <label for="validationCustom02" class="form-label">Prezzo</label>
        <input type="number" name="prezzo" min="1" max="9999.99" step=".01" class="form-control" id="validationCustom02" value="${viaggio.prezzo}" required>
    </div>
    <div class="col-md-12">
        <label for="validationCustomUsername" class="form-label">Descrizione</label>
        <div class="input-group has-validation">
            <textarea class="form-control" name="descrizione" id="validationCustomUsername" aria-describedby="inputGroupPrepend" cols="30" rows="10" required>${viaggio.descrizione}</textarea>
            <div class="invalid-feedback">
                Please choose a username.
            </div>
        </div>
    </div>
    
    <div class="col-12">
        <button class="btn btn-primary" type="submit">Modifica</button>
        <a href="/gestioneviaggi/list/${viaggio.id}/elimina" class="btn btn-danger" type="submit"> Elimina </a>
        
    </div>
</form>




<%@ include file="footer.jsp"%>