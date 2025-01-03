package com.somba.api.core.usecases;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.somba.api.core.entities.Product;
import com.somba.api.core.enums.Category;
import com.somba.api.core.exceptions.InvalidKeywordException;
import com.somba.api.core.ports.ProductSearchRepository;

@ExtendWith(MockitoExtension.class)
class ProductSearchUseCaseTest {
  
  @Mock
  private ProductSearchRepository productSearchRepository;

  private ProductSearchUseCase productSearchUseCase;

  @BeforeEach
  void setUp() {
    productSearchUseCase = new ProductSearchUseCase(productSearchRepository);
  }

  @Test
  void shouldReturnProductsWhenRepositoryIsNotEmpty() {
    // Given
    var products = List.of(
        new Product("Product 1", "Description 1", "Brand 1", 100, 10, Category.ELECTRONICS),
        new Product( "Product 2", "Description 2", "Brand 2", 200, 20, Category.ELECTRONICS)
    );
    
    when(productSearchRepository.search("Product")).thenReturn(products);

    // When
    List<Product> result = productSearchUseCase.execute("Product");

    // Then
    assertThat(result).hasSize(2);
    assertThat(result.get(0).name()).isEqualTo("Product 1");
    verify(productSearchRepository, times(1)).search("Product");
  }

  @Test
  void shouldReturnEmptyListWhenRepositoryIsEmpty() {
    // Given
    when(productSearchRepository.search("Product")).thenReturn(List.of());

    // When
    List<Product> result = productSearchUseCase.execute("Product");

    // Then
    assertThat(result).isEmpty();
    verify(productSearchRepository, times(1)).search("Product");
  }

  @Test
  void shouldThrowExceptionWhenQueryIsNull() {
    // Given
    // When
    // Then
    assertThrows(InvalidKeywordException.class, () -> productSearchUseCase.execute(null));
  }

  @Test
  void shouldThrowExceptionWhenQueryIsEmpty() {
    // Given
    // When
    // Then
    assertThrows(InvalidKeywordException.class, () -> productSearchUseCase.execute(""));
  }

  @Test
  void shouldThrowExceptionWhenQueryIsTooShort() {
    // Given
    // When
    // Then
    assertThrows(InvalidKeywordException.class, () -> productSearchUseCase.execute("ab"));
  }

  @Test
  void shouldThrowExceptionWhenQueryIsTooShortWithSpaces() {
    // Given
    // When
    // Then
    assertThrows(InvalidKeywordException.class, () -> productSearchUseCase.execute(" ab "));
  }
}
