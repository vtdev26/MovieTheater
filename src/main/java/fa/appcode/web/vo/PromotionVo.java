package fa.appcode.web.vo;

import fa.appcode.web.entities.Promotion;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;


@AllArgsConstructor
@NoArgsConstructor
@ToString
@Setter
@Getter
public class PromotionVo {
    private Integer promotionId;

    @NotEmpty(message = "{promotion.detail.empty}")
    private String detail;

    @NotNull(message = "{promotion.discountLevel.empty}")
    private Integer discountLevel;

    @NotNull(message = "{promotion.endTime.empty}")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endTime;

    private String image;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "{promotion.startTime.empty}")
    private Date startTime;

    @NotEmpty(message = "{promotion.title.empty}")
    private String title;

    private MultipartFile file;

    public Promotion getPromotionFromVo() {
        return new Promotion(promotionId, detail, discountLevel, endTime, image, startTime, title);
    }
}
