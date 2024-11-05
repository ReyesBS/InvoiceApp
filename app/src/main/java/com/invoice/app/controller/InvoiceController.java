package com.invoice.app.controller;

import com.invoice.app.model.Invoice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller ("/invoice")
public class InvoiceController {


    @GetMapping("/")
    public String showInvoiceForm(Model model) {
        model.addAttribute("invoice", new Invoice());
        return "invoiceForm";
    }


    @PostMapping("/")
    public String processInvoice(@ModelAttribute("invoice") Invoice invoice, Model model) {

        double retencion = invoice.getAmount() * invoice.getRetentionPercentage() / 100;
        double total = invoice.getAmount() - retencion;


        model.addAttribute("invoice", invoice);
        model.addAttribute("retencion", retencion);
        model.addAttribute("total", total);

        return "invoiceSummary";
    }
}
