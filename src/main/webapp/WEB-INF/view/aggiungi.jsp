<%@ include file="header.jsp"%>

<a href="/gestioneviaggi/list/" class="btn btn-info" type="submit">Elenco</a>

<h1>Dettaglio viaggio</h1>

<h2>Destinazione : </h2>



<form action="/gestioneviaggi/list/aggiungi" method="post" class="row g-3 needs-validation" novalidate>
        
              
       <div class="col-md-4">
        <label for="validationCustom01" class="form-label">Destinazione</label>
        <input type="text" name="destinazione" class="form-control" id="validationCustom01" required>
    </div> 

    <div class="col-md-4">
        <label for="validationCustom01" class="form-label">Durata</label>
        <input type="number" name="durata" min="1" max="10" class="form-control" id="validationCustom01" required>
    </div>
    <div class="col-md-4">
        <label for="validationCustom02" class="form-label">Prezzo</label>
        <input type="number" name="prezzo" min="1" max="9999.99" step=".01" class="form-control" id="validationCustom02" required>
    </div>
    <div class="col-md-12">
        <label for="validationCustomUsername" class="form-label">Descrizione</label>
        <div class="input-group has-validation">
            <textarea class="form-control" name="descrizione" id="validationCustomUsername" aria-describedby="inputGroupPrepend" cols="30" rows="10" required placeholder="Descrizione...."></textarea>
            <div class="invalid-feedback">
                Please insert a Description.
            </div>
        </div>
    </div>
    
    <div class="col-12">
        <button class="btn btn-primary" type="submit">Aggiungi</button>
        
    </div>
</form>




<%@ include file="footer.jsp"%>