/*Fonte: https://www.guj.com.br/t/aplicar-mascara-em-uma-coluna-de-tabela-html/333849/2*/

/*function formatarCPF()
{
    var table = document.getElementById("table1");
    var td = table.getElementsByTagName("td");
    for(var i = 0; i < td.length; i++)
    {
        console.log(td[i].innerText);
        if (td[i].innerText != "CPF")
        {
            td[i].textContent =
                td[i].textContent.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/g,"\$1.\$2.\$3\-\$4");
        }
    }
}*/

function cancelaForm() {
    window.location = "/pages/usuarios";
}

/*Fonte:https://stackoverflow.com/questions/15802100/phone-mask-for-text-field-with-regex/15803006#15803006*/
function mask(o, f) {
    setTimeout(function () {
        var v = mphone(o.value);
        if (v != o.value) {
            o.value = v;
        }
    }, 1);
}

function mphone(v) {
    var r = v.replace(/\D/g,"");
    r = r.replace(/^0/,"");
    if (r.length > 10) {
        // 11+ digits. Format as 5+4.
        r = r.replace(/^(\d\d)(\d{5})(\d{4}).*/,"($1) $2-$3");
    }
    else if (r.length > 5) {
        // 6..10 digits. Format as 4+4
        r = r.replace(/^(\d\d)(\d{4})(\d{0,4}).*/,"($1) $2-$3");
    }
    else if (r.length > 2) {
        // 3..5 digits. Add (0XX..)
        r = r.replace(/^(\d\d)(\d{0,5})/,"($1) $2");
    }
    else {
        // 0..2 digits. Just add (0XX
        r = r.replace(/^(\d*)/, "($1");
    }
    return r;
}

