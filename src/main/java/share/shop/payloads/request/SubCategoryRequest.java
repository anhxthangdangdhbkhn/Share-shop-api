package share.shop.payloads.request;

import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Getter
@Setter
@ToString
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubCategoryRequest {

    @Size(min = 8,max=200,message = "Category title must be between 8 and 200 characters")
    @NotBlank(message = "Category title shouldn't be null")
    private String name;
    private Long categoryId;
}
