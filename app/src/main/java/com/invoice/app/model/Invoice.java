package com.invoice.app.model;

public class Invoice {
    private String concept;
    private double amount;
    private double retentionPercentage;

    // Getters y setters
    public String getConcept() {
        return concept;
    }

    public void setConcept(String concept) {
        this.concept = concept;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getRetentionPercentage() {
        return retentionPercentage;
    }

    public void setRetentionPercentage(double retentionPercentage) {
        this.retentionPercentage = retentionPercentage;
    }
}
