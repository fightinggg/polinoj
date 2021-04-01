package com.oj.dalpolinoj.domin;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author wsx
 * @since 2021-04-01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("submit_history")
@ApiModel(value="SubmitHistory对象", description="")
public class SubmitHistory implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "submit_id", type = IdType.AUTO)
    private Integer submitId;

    private Integer userId;

    private Integer problemId;

    private String submitCode;

    private String submitResult;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    private Integer createUser;

    private LocalDateTime modifyTime;

    private Integer modifyUser;

    private Boolean valid;


}
