package com.crowdar.examples.steps.web;

import com.crowdar.examples.pages.CommonPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import java.util.List;
import java.util.Map;
public class Card3537 {

    @Given("este es un ejemplo usando Doc String:")
    public void esteEsUnEjemploUsandoDocString(String contenido) {
        System.out.println("Contenido:\n " + contenido);
    }

    @And("este es un ejemplo usando {string}")
    public void esteEsUnEjemploUsandoCucumberExpression(String ejemplo) {
        System.out.println("Ejemplo: " + ejemplo);
    }

    @And("^este es un ejemplo utilizando (.*)$")
    public void esteEsUnEjemploUtilizandoRegexClásica(String ejemplo) {
        CommonPage.ExplicitWait(1);
        System.out.println("Ejemplo: " + ejemplo);
    }

    @And("ahora vamos a hacer un data table")
    public void ahoraVamosAHacerUnDataTable(io.cucumber.datatable.DataTable dataTable) {
        List<Map<String, String>> productos = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> producto : productos) {
            System.out.println("Producto: " + producto.get("nombre") + " - Precio: " + producto.get("precio"));
        }
    }

    @And("un ejemplo de para step combinados sería un datatable y {string}")
    public void unEjemploDeParaStepCombinadosSeríaUnDatatableY(String expresion, io.cucumber.datatable.DataTable dataTable) {
        List<Map<String, String>> productos = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> producto : productos) {
            String nombre = producto.get("nombre");
            String precio = producto.get("precio");
            System.out.println("Producto: " + nombre + " - Precio: " + precio);
        }
    }

    @Then("voy a hacer una combinacion con {string} {string} y Doc String:")
    public void voyAHacerUnaCombinacionConRegexYDocString(String ejemplo) {
        System.out.println("Ejemplo: " + ejemplo);
    }

}
