package com.dwbessa.crud.controller;

import com.dwbessa.crud.model.Item;
import com.dwbessa.crud.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/items")
public class ItemController {
    @Autowired
    private ItemService itemService;

    @GetMapping
        public String listItems(Model model) {
            try {
                model.addAttribute("items", itemService.getAllItems());
                model.addAttribute("item", new Item());
                return "items";
            } catch (Exception e) {
                e.printStackTrace();
                return "error";
            }
        }

    @PostMapping
    public String saveItem(@ModelAttribute Item item) {
        itemService.saveItem(item);
        return "redirect:/items";
    }

    @GetMapping("/edit/{id}")
    public String editItem(@PathVariable Long id, Model model) {
        model.addAttribute("item", itemService.getItemById(id).orElse(new Item()));
        model.addAttribute("items", itemService.getAllItems());
        return "items";
    }

    @GetMapping("/delete/{id}")
    public String deleteItem(@PathVariable Long id) {
        itemService.deleteItem(id);
        return "redirect:/items";
    }
}
