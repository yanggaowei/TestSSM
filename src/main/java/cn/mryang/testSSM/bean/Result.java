package cn.mryang.testSSM.bean;

import java.io.Serializable;

/**
 * Created by Administrator on 2019/5/12.
 */
public class Result implements Serializable{
    private Boolean flag;
    private Object data;
    private String Msg;

    public Result(Boolean flag, Object data, String msg) {
        this.flag = flag;
        this.data = data;
        Msg = msg;
    }

    public Boolean getFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return Msg;
    }

    public void setMsg(String msg) {
        Msg = msg;
    }

    @Override
    public String toString() {
        return "Result{" +
                "flag=" + flag +
                ", data=" + data +
                ", Msg='" + Msg + '\'' +
                '}';
    }
}

