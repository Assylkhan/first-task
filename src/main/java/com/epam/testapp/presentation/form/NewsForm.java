package com.epam.testapp.presentation.form;

import org.apache.struts.validator.ValidatorForm;

public class NewsForm extends ValidatorForm {
    private String id;
    private String title;
    private String brief;
    private String content;
    private String date;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

 /*   @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (this.title == null || title.trim().equals(""))
            errors.add("title", new ActionMessage("errors.required", "Title"));
        if (date == null)
            errors.add("date", new ActionMessage("errors.required", "Date"));
        if (brief == null || brief.trim().equals(""))
            errors.add("brief", new ActionMessage("errors.required", "Brief"));
        if (content == null || brief.trim().equals(""))
            errors.add("content", new ActionMessage("errors.required", "Content"));
        return errors;
    }*/
}
