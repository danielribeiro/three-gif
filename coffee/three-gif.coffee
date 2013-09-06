instrumentWebGlRenderer = ->
    throw new Error("Three.js not initialized") unless window.THREE?.WebGLRenderer?
    codelines = window.THREE.WebGLRenderer.toString().split('\\n');
    code = codelines[0] + "\nconsole.log('help, ive been hacked');\n" + codelines.slice(1).join('\\n')
    eval('window.THREE.WebGLRenderer = ' + _code)
