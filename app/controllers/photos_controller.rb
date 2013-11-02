class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end

  #Parameters:
  #{"image"=>#<ActionDispatch::Http::UploadedFile:0x007f016cb90798 @original_filename="travelpocket_20131102225820",
  #@content_type="application/octet-stream",
  #@headers="Content-Disposition:
  #form-data; name=\"image\"; filename=\"travelpocket_20131102225820\"\r\n
  #Content-Type: application/octet-stream\r\n",
  #@tempfile=#<Tempfile:/tmp/RackMultipart20131102-2-1x9xx42>>}

  def upload
    file = params[:image]

    tmp_directory = Rails.root.join('tmp')
    name = file.original_filename
    id = name.split('_')[0]

    puts "FILE DETAILS ////////////"
    puts name
    puts id

    marker_directory = File.join(tmp_directory, id)

    puts "MARKER_DIRECTORY: #{marker_directory}"
    unless Dir.exist? marker_directory
      puts "Creatind marker directory..."
      Dir.mkdir(marker_directory)
    end

    marker_image_path = File.join(marker_directory, name)
    puts "MARKER_IMAGE_PATH: #{marker_image_path}"

    File.open(marker_image_path, "wb") do |file|
      puts file.inspect
      file.write(file.read)
    end

    render text: "File uploaded successfully"
  end

end
