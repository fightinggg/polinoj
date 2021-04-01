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
@TableName("problem")
@ApiModel(value="Problem对象", description="")
public class Problem implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "problem_id", type = IdType.AUTO)
    private Integer problemId;

    private Integer problemOwnerId;

    private String problemSourceType;

    private String problemSourceUri;

    private String problemName;

    private String problemDescribe;

    private String problemComment;

    private Integer problemTimeLimit;

    private Integer problemMemeryLimit;

    private String problemInputOne;

    private String problemOutputOne;

    private String problemInputTwo;

    private String problemOutputTwo;

    private Integer problemAcCount;

    private Integer problemSubmitCount;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    private Integer createUser;

    private LocalDateTime modifyTime;

    private Integer modifyUser;

    private Boolean valid;


}
