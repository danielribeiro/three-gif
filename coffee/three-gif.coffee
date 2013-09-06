instrumentWebGlRenderer = ->
    _codelines = window.THREE.WebGLRenderer.toString().split('\\n');
    _code = _codelines[0] + "\nconsole.log('help, ive been hacked');\n" + _codelines.slice(1).join('\\n')
    eval('window.THREE.WebGLRenderer = ' + _code)
