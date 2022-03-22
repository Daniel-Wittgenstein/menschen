



keygen = (function() {

/* 
usage:

1. when the app starts up, do:
    keygen.init(ink_stoy_object)

2. then you can do:

    let my_key = keygen.generate_key([
        "a_variable_to_remember", "another_var_to_remember", "has_sword"
    ])

    -> strings must be names of Inky variables!
    
    -> bool, int, float and string are all allowed as variable values.

    -> if successful, returns a string containing the key

    -> if a variable does NOT exist in Ink, it returns an object like this:
        {error: true} -> this is a developer bug, of course.

3.
    let succ = keygen.restore_vars_from_key(my_key)

    -> returns string(!) with error message if there is an error (invalid key)
    also returns an error message if a variable does not exist in the Ink story!
    -> this error message should be shown to the user (or another appropriate
        error message)

    -> otherwise restores the state of the Inky variables contained in key silently
        and returns an object like this: {success: true}.
    
    -> keys with wrong version or game number are rejected

*/

    let story

    function init(tstory) {
        story = tstory
    }

    const my_map1 = `abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789":{},`
    const my_map2 = `rpFMovIYliLZDVxPf5jy3hbXtRcH62"8k:wuqeA,CWsBnK}9UTNzGd7agJ1{0SEmQ4O`

    let hash1 = {}
    let hash2 = {}

    my_map1.split("").forEach( (n, i) => {
        hash1[n] = my_map2[i]
        hash2[ my_map2[i] ] = n
    })


    function obfuscate(str) {
        return de_ob_fusc(str, hash1)
    }

    function de_obfuscate(str) {
        return de_ob_fusc(str, hash2)
    }

    function de_ob_fusc(str, hash) {
        return str.split("").map(n => hash[n] || n ).join("")
    }

    function change_string_char_order(str) {
        let str1 = ""
        let str2 = ""
        let n = false
        for (let char of str) {
            n = !n
            if (n) {
                str1 += char
            } else {
                str2 += char
            }
        }
        str = str1 + str2
        return str
    }

    function revert_string_char_order(str) {
        let len = str.length
        let mid
        if (len % 2 === 0) {
            mid = len / 2
        } else {
            mid = len / 2 + 0.5
        }
        let out = ""
        let str1 = str.substr(0, mid)
        let str2 = str.substr(mid)
        for (let i = 0; i < mid; i++) {
            out += str1.substr(i, 1)
            let v = str2.substr(i, 1)
            if (v) {
                out += v
            }
        }
        return out
    }

    function generate_key(vars) {
        /* Generates key.
        1. Pass array containing
        strings. Strings must be names of Ink vars you want
        to remember. bools, integers, floats and strings are supported. */
        let store = {}
        for (let v of vars) {
            if (story.variablesState[v] === null) return {
                error: true,
            }
            store[v] = story.variablesState[v]
        }
        let key = JSON.stringify(store)

        let nu_key = key
        
        for (let i = 0; i < 10; i++) {
            nu_key = change_string_char_order(nu_key)
        }
        
        nu_key = obfuscate(nu_key)

        //console.log(nu_key, nu_key === key)

        return `kavka-${game_number}-${version_number}---` + nu_key
    }
    
    const game_number = 1
    const version_number = 1

    function restore_vars_from_key(key) {
        /* pass
        1. a key returned from generate_key
        */
        let g
        let v
        let parts
        let subparts
        
        try {
            key = key.replace("kavka-", "")
            parts = key.split("---")
            subparts = parts[0].split("-")
            g = parseInt(subparts[0], 10)
            v = parseInt(subparts[0], 10)
        } catch {
            return `Unzulässiger Schlüssel. Der Schlüssel sollte `+
            `mit "kavka-1-1---" (oder ähnlich) beginnen.`
        }

        if (g !== game_number - 1) {
            return `Dieser Schlüssel wurde nach dem Durchspielen von Episode `+
            `${g} generiert. Er ist daher nur in Episode ${game_number + 1} gültig.`
        }

        if (v !== version_number) {
            throw `Schlüssel für Versionsnummer "${v}" des Spiels. Dieses
                Spiel hat die Versionsnummer "${version_number}".`
        }

        let nu_key

        try {
            nu_key = parts[1]

            nu_key = de_obfuscate(nu_key)

            for (let i = 0; i < 10; i++) {
                nu_key = revert_string_char_order(nu_key)
            }
        } catch(e) {
            return `Kein zulässiger Schlüssel. Der Schlüssel sollte `+
            `mit "kavka-1-1---" (oder ähnlich) beginnen.`  
        }

        let obj
        try {
            obj = JSON.parse(nu_key)
        } catch(e) {
            return `Kein gültiger Schlüssel.`
        }

        //first check all vars:
        for (let key of Object.keys(obj)) {
            if (story.variablesState[key] === null) {
                console.log(`${key}: not a valid Inky variable.`)
                return `Unzulässiger Schlüssel.`
            }
        }

        for (let key of Object.keys(obj)) {
            story.variablesState[key] = obj[key]
        }
        
        return {
            success: true,
        }
    }

    return {
        init,
        generate_key,
        restore_vars_from_key,
        obfuscate, //just exported for fun
        de_obfuscate, //just exported for fun
    }
})()










