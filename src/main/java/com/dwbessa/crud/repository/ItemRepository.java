// ItemRepository.java
package com.dwbessa.crud.repository;

import com.dwbessa.crud.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemRepository extends JpaRepository<Item, Long> {
}

