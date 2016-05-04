class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Trevor Knott
6481 Welch Ct, Arvada CO,90003
(970) 581-3161                                                                                                                          tknott95@hotmail.com
Education

West Hills College – Coalinga, CA						July 2014 February -2015
•	For college baseball, business and nutrition
Windsor High School – Windsor, CO               				August 2010 – May 2014
•	HTML, Java, Web Design, Microsoft Excel, Adobe Photoshop,
DaVinci Institute – Westminster, CO					September 2015 –  May 1st, 2016
•	Obtained a Micro-Degree for Programming
•	Certfificate for Game Development

Programming

Game Development using C# (1000+ hours)
•	Software Engineering
•	Programmed and designed three Unity 3d games (VR + PC)
•	Programmed and designed two Unity 2d game (Android + PC)
•	AI Programming, Level Design, UI Design, VR input, Mobile Input, Xbox360 Input
•	Custom Editor Scripting, Networking (JSON), Procedural Generation
•	Intermediate C# Programmer
Ruby On Rails (700 + hours)
•	CSS, Ruby, Git, Heroku, HTML, SASS, Gimp, Slack
•	Built web-applications/websites
•	Work On Rails framework
•	TDD, RSPEC, CLI
Penetration Testing (50+ hours)
•	Self-Taught from book
•	Expertise in Kali Linux
Small Team Experience

College Baseball
•	Played college baseball
•	Learned how to deal with adversity
•	Very strong leadership skills
•	Played 4 other sports growing up
Relay for Life Volunteer Work
•	Teamwork skills in new environments
Ryz Nutrition
•	Startup supplement company
•	2014 – present
•	Acquired business skills
City-Wide Home Loans (Administrative Assistant) – 2108 Milestone Drive, Suite 200 – Fort Collins
•	Experience in professional office setting
•	Problem Solving in a work place

Info -  Studied/taken multiple languages/classes:  C#, Unity, HTML, Ruby, Javascript, CSS, SASS, Rails, JSON ,Photoshop, Excel, Dreamweaver, Visual Studios, Web Design, Game Development (2x)

"
        send_data pdf.render
      end
    end
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
  end

  # GET /skills/new
  def new
    @skill = Skill.new
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:skill)
    end
end
