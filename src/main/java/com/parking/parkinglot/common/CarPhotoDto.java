package com.parking.parkinglot.common;

public class CarPhotoDto {


    private Long id;
    private String filename;
    private String fileType;
    private byte[] fileContent;

    public CarPhotoDto(Long id, String filename, String fileType, byte[] fileContent) {
        this.id = id;
        this.filename = filename;
        this.fileType = fileType;
        this.fileContent = fileContent;
    }

    public Long getId() {
        return id;
    }

    public byte[] getFileContent() {
        return fileContent;
    }

    public String getFileType() {
        return fileType;
    }

    public String getFilename() {
        return filename;
    }
}
