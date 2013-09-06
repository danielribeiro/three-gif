instrumentWebGlRenderer = ->
    throw new Error("Three.js not initialized") unless window.THREE?.WebGLRenderer?
    codelines = window.THREE.WebGLRenderer.toString().split('\n');
    injectedCode = "\nconsole.log('Three-gif instrumented THREE.WebGLRenderer to preserveDrawingBuffer');
    arguments[0].preserveDrawingBuffer = true;\n"
    code = codelines[0] + injectedCode + codelines.slice(1).join('\n')
    eval('window.THREE.WebGLRenderer = ' + code)


instrumentWebGlRenderer()