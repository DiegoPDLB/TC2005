document.getElementById("passwordForm").addEventListener("submit", function(event) {
    event.preventDefault();
    validatePassword();
});

function validatePassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    var passwordMessageElement = document.getElementById("passwordMessage");

    if (password === "" || confirmPassword === "") {
        passwordMessageElement.textContent = "Please fill in all fields.";
        return;
    }

    if (password !== confirmPassword) {
        passwordMessageElement.textContent = "Passwords do not match.";
        return;
    }


    passwordMessageElement.textContent = "Passwords match!";
    document.getElementById("passwordContainer").style.display = "none";
    document.getElementById("storeContainer").style.display = "block";
}

function calculateTotal() {
    var quantity1 = parseInt(document.getElementById("quantity1").value);
    var quantity2 = parseInt(document.getElementById("quantity2").value);
    var quantity3 = parseInt(document.getElementById("quantity3").value);

    if (isNaN(quantity1) || isNaN(quantity2) || isNaN(quantity3)) {
        alert("Por favor, ingresa una valor valido.");
        return;
    }

    if (quantity1 < 0 || quantity2 < 0 || quantity3 < 0) {
        alert("No puede haber negativos.");
        return;
    }

    var price1 = 10;
    var price2 = 20;
    var price3 = 15;

    var subtotal = quantity1 * price1 + quantity2 * price2 + quantity3 * price3;
    var total = subtotal * 1.16;
    var tax = total - subtotal;

    var resultElement = document.getElementById("storeResult");
    resultElement.innerHTML = "<h3>Carrito de compra</h3>" +
                               "<p>Pescado verde: $" + (quantity1 * price1) + "</p>" +
                               "<p>Vaca Lola: $" + (quantity2 * price2) + "</p>" +
                               "<p>Chems: $" + (quantity3 * price3) + "</p>" +
                               "<hr>" +
                               "<p>Subtotal: $" + subtotal.toFixed(2) + "</p>" +
                               "<p>IVA (16%): $" + tax.toFixed(2) + "</p>" +
                               "<h3>Total: $" + total.toFixed(2) + "</h3>";
}