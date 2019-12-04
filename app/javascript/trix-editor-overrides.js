window.addEventListener("trix-file-accept", function(event) {
    const maxFileSize = 1024 * 1024 // 1MB 
    if (event.file.size > maxFileSize) {
      event.preventDefault()
      alert("Solo se permiten archivos de maximo 1MB!")
    }
  })