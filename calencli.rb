require "date"

# DATA
id = 0
events = [
  { id: (id = id.next), start_date: "2023-02-13T00:00:00-05:00", title: "Ruby Basics 1", end_date: "", notes: "Ruby Basics 1 notes", guests: ["Paulo", "Andre"], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-13T09:00:00-05:00", title: "English Course", end_date: "2023-02-13T10:30:00-05:00", notes: "English notes", guests: ["Stephanie"], calendar: "english" },
  { id: (id = id.next), start_date: "2023-02-14T00:00:00-05:00", title: "Ruby Basics 2", end_date: "", notes: "Ruby Basics 2 notes", guests: ["Paulo", "Andre"], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-14T12:45:00-05:00", title: "Soft Skills - Mindsets", end_date: "2023-02-14T13:30:00-05:00", notes: "Some extra notes", guests: ["Mili"], calendar: "soft-skills" },
  { id: (id = id.next), start_date: "2023-02-15T00:00:00-05:00", title: "Ruby Methods", end_date: "", notes: "Ruby Methods notes", guests:["Paulo", "Andre"], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-15T09:00:00-05:00", title: "English Course", end_date: "2023-02-15T10:30:00-05:00", notes: "English notes", guests: ["Stephanie"], calendar: "english" },
  { id: (id = id.next), start_date: "2023-02-16T09:00:00-05:00", title: "Summary Workshop", end_date: "2023-02-16T13:30:00-05:00", notes: "A lot of notes", guests: ["Paulo", "Andre", "Diego"], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-16T00:00:00-05:00", title: "Extended Project", end_date: "", notes: "", guests: [], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-17T09:00:00-05:00", title: "Extended Project", end_date: "", notes: "", guests: [], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-17T09:00:00-05:00", title: "English Course", end_date: "2023-02-17T10:30:00-05:00", notes: "English notes", guests: ["Stephanie"], calendar: "english" },
  { id: (id = id.next), start_date: "2023-02-18T10:00:00-05:00", title: "Breakfast with my family", end_date: "2023-02-18T11:00:00-05:00", notes: "", guests: [], calendar: "default" },
  { id: (id = id.next), start_date: "2023-02-18T15:00:00-05:00", title: "Study", end_date: "2023-02-18T20:00:00-05:00", notes: "", guests: [], calendar: "default" },
  { id: (id = id.next), start_date: "2023-02-23T00:00:00-05:00", title: "Extended Project", end_date: "", notes: "", guests: [], calendar: "web-dev" },
  { id: (id = id.next), start_date: "2023-02-24T09:00:00-05:00", title: "Extended Project", end_date: "", notes: "", guests: [], calendar: "web-dev" },
  ]
def list_events(events)
  puts "#{'-' * 24}Welcome to CalenCli#{'-' * 24}\n\n"
  events = events.group_by{|event| Date.parse(event[:start_date]).strftime("%a %b %e")}
  # p events
  events.each do |key, value| 
    value.each_with_index do |event, index|
      
      if event[:end_date] != "" 
        start_hours = DateTime.parse(event[:start_date]).strftime("%H:%M") 
        end_hours = DateTime.parse(event[:end_date]).strftime("%H:%M") 
        hours = "#{start_hours} - #{end_hours}"
      else  
        blanks = " " * 13
      end
      if index == 0
        date = key 
      else
        date = " " * 10
      end 
      puts "#{date} #{blanks} #{hours} #{event[:title]} (#{event[:id]})"
    end
    puts ""
  end
end

 list_events(events)
