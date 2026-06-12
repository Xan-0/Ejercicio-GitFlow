function calcularTotal(precio, descuento) {
  if (precio < 0) {
    throw new Error("El precio no puede ser negativo");
  }
  return precio - descuento;
}

function calcularPrecioFinal(precio, tipo_cliente) {
  if (tipo_cliente !== "estudiante") {
    throw new Error("tipo_cliente no soportado");
  }
  return precio * (1-0.15);
}

module.exports = { calcularTotal, calcularPrecioFinal };
