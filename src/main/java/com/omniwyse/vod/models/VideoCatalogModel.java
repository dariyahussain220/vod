package com.omniwyse.vod.models;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "videoCatalog")
public class VideoCatalogModel {

    private Long id;
    private Long providerId;
    private String videoURL;
    private String imageURL1;
    private String imageURL2;
    private String imageURL3;
    private Long contentProviderID;
    private String contentType;
    private String shortDesc;
    private String longDesc;
    private Date created_on;
    private int status;
    private String Tags;
    private Long genreID;
    private Long subGenreID;

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProviderId() {
        return providerId;
    }

    public void setProviderId(Long providerId) {
        this.providerId = providerId;
    }

    public String getVideoURL() {
        return videoURL;
    }

    public void setVideoURL(String videoURL) {
        this.videoURL = videoURL;
    }


    public String getImageURL1() {
        return imageURL1;
    }

    public void setImageURL1(String imageURL1) {
        this.imageURL1 = imageURL1;
    }

    public String getImageURL2() {
        return imageURL2;
    }

    public void setImageURL2(String imageURL2) {
        this.imageURL2 = imageURL2;
    }

    public String getImageURL3() {
        return imageURL3;
    }

    public void setImageURL3(String imageURL3) {
        this.imageURL3 = imageURL3;
    }

    public Long getContentProviderID() {
        return contentProviderID;
    }

    public void setContentProviderID(Long contentProviderID) {
        this.contentProviderID = contentProviderID;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getLongDesc() {
        return longDesc;
    }

    public void setLongDesc(String longDesc) {
        this.longDesc = longDesc;
    }

    public Date getCreated_on() {
        return created_on;
    }

    public void setCreated_on(Date created_on) {
        this.created_on = created_on;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTags() {
        return Tags;
    }

    public void setTags(String tags) {
        Tags = tags;
    }

    public Long getGenreID() {
        return genreID;
    }

    public void setGenreID(Long genreID) {
        this.genreID = genreID;
    }

    public Long getSubGenreID() {
        return subGenreID;
    }

    public void setSubGenreID(Long subGenreID) {
        this.subGenreID = subGenreID;
    }

}
