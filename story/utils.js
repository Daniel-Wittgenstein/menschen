


//type checks:
/*
is_string, is_function, is_number, is_date, is_regexp
*/

;['String', 'Function', 'Number', 'RegExp', 'Date'].forEach(
    (name) => { 
        window['is_' + name.toLowerCase()] = (o) => {
              return toString.call(o) == '[object ' + name + ']'
    }
});


function is_integer(n) {
    return is_number(n) && Math.round(n) === n
}

function is_float(n) {
    return is_number(n) && !is_integer(n)
}


/*
function is_nw_js(){
    try {
        return ( typeof require('nw.gui') !== "undefined" )
    } catch (e) {
        return false
    }
}
*/

function escape_html(n) {
    let l = {
        '&': "&amp;",
        '"': "&quot;",
        '\'': "&apos;",
        '<': "&lt;",
        '>': "&gt;"
    };
    return n.replace( /[&"'<>]/g, n => l[n] )
}



//random:
function rnd(min, max) {
    min = Math.ceil(min)
    max = Math.floor(max)
    return Math.floor( Math.random() * (max - min + 1) ) + min
}


function one_of(arr) {
    return arr[rnd(0, arr.length-1)]
}